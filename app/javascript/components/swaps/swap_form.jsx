import React from 'react'

class SwapForm extends React.Component {

    constructor(props) {
        super(props)

        this.state = { user_id: null, shift_id: null, target_id: null, target_shift_id: null }

        this.listUserShifts = this.listUserShifts.bind(this)
        this.listTargetShifts = this.listTargetShifts.bind(this)

        this.handleSubmit = this.handleSubmit.bind(this)

        this.updateTargetAndShift = this.updateTargetAndShift.bind(this)
    }

    componentDidUpdate(prevProps) {

        if (this.props.user !== prevProps.user) {
            this.setState({ user_id: this.props.user.id, shift_id: this.props.user.shifts[0].id})
        }
    }

    handleSubmit(e) {
        e.preventDefault();
        let swap= { swap: this.state }
        this.props.createSwap(swap)

    }

    listUserShifts(e) {

        if (this.props.user == undefined) return []

        const returnShifts = this.props.user.shifts.map((shift, idx) => {
            return <option key={"swap-shift-" + idx}>
                Start: {shift.shift_start} {`->`} End: {shift.shift_end}
            </option>
        })

        return returnShifts
    }

    listTargetShifts(e) {

        let targetShifts = [""]

        this.props.shifts.forEach((shift) => {
            if (shift.user_id != this.state.user_id) {
                targetShifts.push(shift)
            }
        })

        const returnShifts = targetShifts.map((shift, idx) => {
            return <option data-target-id={shift.user_id} data-target-shift-id={shift.id} key={"swap-shift-" + idx}>
                Start: {shift.shift_start} {`->`} End: {shift.shift_end}
            </option>
        })

        return returnShifts
    }

    updateTargetAndShift(e) {

        switch(e.currentTarget.classList[0]) {
            case ('swap-target-shifts'):
                this.setState({ 
                    target_id: (parseInt($(e.currentTarget).find(':selected').attr('data-target-id'))), target_shift_id: (parseInt($(e.currentTarget).find(':selected').attr('data-target-shift-id')))
                })
                break
            default:
                break
        }
    }

    render () {

        return (

            <section>
                <h1 className="swap-request-header">Request A Shift Swap</h1>
                <form onSubmit={this.handleSubmit} className="swap-form" id="swap-submit">

        
                    <select onChange={this.updateTargetAndShift} className="swap-user-shifts">
                        {this.listUserShifts()}
                    </select>
                    <select onChange={this.updateTargetAndShift} className="swap-target-shifts">
                        {this.listTargetShifts()}
                    </select>
                    <br></br>

                    <button>Submit</button>

                </form>
            </section>
        )
    }
}

export default SwapForm


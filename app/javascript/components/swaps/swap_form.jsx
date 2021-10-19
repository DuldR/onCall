import React from 'react'

class SwapForm extends React.Component {

    constructor(props) {
        super(props)

        this.state = { user_id: 1, shift_id: 1, target_id: 2, target_shift_id: 2 }

        this.listUserShifts = this.listUserShifts.bind(this)
        this.listTargetShifts = this.listTargetShifts.bind(this)

        this.handleSubmit = this.handleSubmit.bind(this)

        this.updateTargetAndShift = this.updateTargetAndShift.bind(this)
    }

    componentDidUpdate(prevProps) {
        if (this.props.user !== prevProps.user) {
            this.setState({ user_id: this.props.user.id})
        }
    }

    handleSubmit(e) {
        e.preventDefault();
        // let review = { review: this.state }
        // this.props.createReview(review).then(
        //     this.props.history.push(`/benches/${this.props.bench.id}`)
        // )

    }

    // Could dry this up

    listUserShifts(e) {
        let userAvailableShifts = []

        this.props.shifts.forEach((shift) => {
            if (shift.user_id == this.state.user_id) {
                userAvailableShifts.push(shift)
            }
        })

        const returnShifts = userAvailableShifts.map((shift, idx) => {
            return <option value={shift.id} key={"swap-shift-" + idx}>
                Start: {shift.shift_start} -> End: {shift.shift_end}
            </option>
        })

        return returnShifts
    }

    listTargetShifts(e) {

        let targetShifts = []

        this.props.shifts.forEach((shift) => {
            if (shift.user_id != this.state.user_id) {
                targetShifts.push(shift)
            }
        })

        const returnShifts = targetShifts.map((shift, idx) => {
            return <option value={shift.id} key={"swap-shift-" + idx}>
                Start: {shift.shift_start} -> End: {shift.shift_end}
            </option>
        })

        return returnShifts
    }

    updateTargetAndShift(e, target, shift) {

        console.log(e)
        console.log(target)
        console.log(shift)
    }

    render () {

        return (

            <form onSubmit={this.handleSubmit} className="swap-form" id="swap-submit">

                <label >Rating: </label>
                <select onChange={this.updateTargetAndShift} className="swap-user-shifts">
                    {this.listUserShifts()}
                </select>
                <select onChange={this.updateTargetAndShift} className="swap-target-shifts">
                    {this.listTargetShifts()}
                </select>
                <br></br>

                <button>Submit</button>

            </form>
        )
    }
}

export default SwapForm


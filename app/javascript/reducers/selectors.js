
// export const selectAllReviews = (state) => {
//     return Object.values(state.entities.reviews)
// }

// export const selectAllBenches = (state) => {

//     return Object.values(state.entities.benches)
// }

export const onCallUsers = (users) => {

    let onCall = []

    if (Object.entries(users).length === 0) return {}

    users = Object.values(users)

    users.forEach(user => {
        if (user.on_call == true) {
            onCall.push(user)
        }
    })
    return onCall

}


export const selectAllUsers = (state) => {
    return Object.values(state.users)
}
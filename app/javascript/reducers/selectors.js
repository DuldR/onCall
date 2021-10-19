// Could dry these up.

export const onCallUsers = (users) => {

    let onCall = []

    if (Object.entries(users).length === 0) return []

    users = Object.values(users)

    users.forEach(user => {
        if (user.on_call == true) {
            onCall.push(user)
        }
    })
    return onCall

}

export const userRequests = (swaps, userId) => {

    let pendingRequests = []

    if (Object.entries(swaps).length === 0) return []

    swaps = Object.values(swaps)

    swaps.forEach(swap => {
        if (swap.target_id == userId) {
            pendingRequests.push(swap)
        }
    })

    return pendingRequests

}

export const selectAllSwaps = (state) => {
    return Object.values(state.swaps)
}

export const selectAllShifts = (state) => {
    return Object.values(state.shifts)
}

export const selectAllUsers = (state) => {
    return Object.values(state.users)
}
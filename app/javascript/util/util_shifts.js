export const fetchOneShift = (shift) => {

    return $.ajax({
        method: "GET",
        url: `/shifts/${shift}`,
    })

}

export const fetchAllShifts = () => {

    return $.ajax({
        method: "GET",
        url: `/shifts/`,
    })

}
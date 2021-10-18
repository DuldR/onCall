export const fetchOneUser = (user) => {

    return $.ajax({
        method: "GET",
        url: `/users/${user}`,
    })

}

export const fetchAllUsers = () => {

    return $.ajax({
        method: "GET",
        url: `/users/`,
    })

}
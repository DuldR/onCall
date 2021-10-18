export const fetchUser = (user) => {

    return $.ajax({
        method: "GET",
        url: `/users/${user}`,
    })

}
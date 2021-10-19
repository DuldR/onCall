export const createSwap = (swap) => {

    return $.ajax({

        method: "POST",
        url: "/swaps",
        data: swap


    })

}

export const fetchSwaps = () => {

    return $.ajax({

        method: "GET",
        url: "/swaps",
        
    })

}

export const approveSwap = (id, data) => {
    return $.ajax({
        method: "PATCH",
        url: `/swaps/${id}`,
        data: data
    })
}
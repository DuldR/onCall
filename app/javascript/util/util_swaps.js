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
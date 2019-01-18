pragma solidity ^0.4.19;

/*   WURXNW1aWEJwWTBCNVlXNWtaWGd1Y25VTkNtaDBkSEE2THk5ek1pNTFhV1F1YldVdlAzSnVaRDFQWldaNk5WTjFWRElsTWtKSUpUSkNhMEV6WTNsdmFGRkRXa0pXWkdGaEpUSkNaVFJSZWtoT056RnJaeVV6UkNVelJBMEtEUXBwY21sdVlXeDVZMnR6YUdGQVoyMWhhV3d1WTI5dERRcG5jbTlrYm04eU1ERTNJTkNZMEtEUWtOQ2IwWVBRdXRHSTBMQU5DZzBLS3pRM05EVXhJRFV6SURrNU9DQU5DaXMwTnlBME5UVWdOelVnTmpNeURRb3lZa0ozWkd0TVFVUnlWMlpYTmtwbWVsaHhWVk01Y2sxelowUlFPRUYzWm5vMFVsTktPVUYyZVRaNWFXaGlObFozWTJKVk5GSldURVZLVXpZNFJFNVNXakZvWjJoV1pIZEhTbk5DUldjek5FRnBWbXBZWnpWdFpVcHRVMlp2Y1VJeVVtRndSVEpOVG5GWFRXdGhWMmhPVFZkUmJVZFJUbVZrVUVGTE9VWk1RVTVtYVhaaGFrZFdjazFIVUhOMFRHbExSelpLU2pSaU1VUmpURnBNY2xWS1ltbGhkMm94U3pGTGNVbzBaRkYzUzJkeGVuVmtaM1pPWTJsblpVZFhVVkpTWTFWVVZYWkdXV1kzWjJsaWIyWlJiamxIVlU1MVlUaEtNbE5MTVVnMFdUYzVhSHBFVjJacE0wVmtaV1ZRUkhkb2RHUnlhalIxVlUxek1WUlNObTQ1VlhWRVVIWkxVVkZOTjAxTE0wWmhaVEZ2UmtaNk5VczBaMk53YmxObVkwUkhZVGh1TlZobFEyZ3laV2t4WkhsS2QwaG1ZalpNYWxaTFMzQmlkRzVxVjJsdE9HZDJObkF4WjNWRFJIbHlXRUpCUjNKTU5FdG1hamxsWkVOM1VEbGFOMUZpWTNaRlZtNHlUak54UkhrMFUyMHlZMmh6VUhweldGWjFSM3B2TTNnM1JuTTRRWEJtWmpseGRscFNZMmg2U0ZSdGMzQklObmROVmtWRk5EaFZabHBGZDA1NFFsaERUbFkyUm1WMVVqVlFNV0ZaVm1oa1RVcFRkREpEYTNNNFRXUlRhM2wzV0hSTVNFSjVhbWczUmpONlluQnBRVXQ0VlRWblUwMXlkMk42ZWtWMGMyTnpRM1F6YVdOT2JUUnpPRlEyVGxWM01VZFpZWGMwZUROMk5GRTFhV1pJYVhsYWRtZExRalZHV2pSM1VUUkVWbGMwUWtGSVdtUmllSG96U3pneGExVnVaazVPTlhkM1lWVk9VVTU2ZWxRNU9XaGlZV2xPVjNvM1ZVaEtOWGRhU2xST09Fc3hXWE5tUms0elkzaFpSR1JJZEhvMFV6Wk5Samt5UTJOeVNrZHVkRUYxVUhCak4wdGFhVmd5TldSeWFVUnVaM1ZPVUZKTVJUaDRWWEp6ZFhOUVpUUmxkRWRETlhaU01UUlNibmxYVmpaeVFWcFZSbEpxTTNaSVFVaFJZMVpTWkdONFZXbGhaR2RSWmxsT2RsaFVVbFE0YTB4b2RrSllVa2Q0UTFkYVowaGxSRWgyYjBSRk5IaG1WMHQwYjBRMVdqZFRXbGxaZFdOWlYwaENPWEZTWkVWcGJrcGpjV2RaWVRKalprNDViM3B2WkVwME4wSTRNblptU3pSNVVrWlZNMFJ3ZGtWNFEyOWFaVkpXWlZWV2MwdDRTRGM1UTI1TE5Fd3hZa2MyV2pWdmFtWnJWR1l4UVdGcWFYRjBNbmxuUzI1YVMwUkVOWGhCZUROcGRIWjBVa3RNZVcxRVdEUk1XbkZqZEhCalVFcGhOalI0Y2tSRU5uWk9Va1YwYXpZMWMyTnFjV2R2V2s1aWMxUmhhamxFVUVRNVkydFplSE56VG5GaU5XcEtlalJFZWpONlNGbExSbko2WjNGcFdFWTJRa2hwUkVZME1saGhjMk4xVUcwM1YxTXhibE5ZUTNoUk5VZDNRVXc1V1RsRVl6Tk5aV2hYUTJadU9VeGpVbk5JTkhodldrcGFSVFJsWWs0NGRWaHhjbEZpVGtKWVlYcHpSVk5yVFVaaFdETnpOVnBaZW5OelkxWjFhbkZXUXpGa2NtZFJOMHBxWkhaR1NFeGxZemhoYTJkU1VqVjNOakptTVhwTE16UnlSRzVsUjFCSWJrSjRZV3B6Um5OaE1rSmpTRkJYZERONFpWQTVSMjFFVjJGMlVWZFdjbnBqVWtGd04wSm1kVWc1WWpnemRFRjVjRkZHVEUxQk4xVk1Ra000ZUUxUlZVeHpNbEpHTWt4U2NqTlFabHBITWxZNVJFd3hZamxZYW1OTFN6RTFaa0ZXY21KYWFrNVhhak40ZDJwd1ZHVmtTSG81ZFZFeWJraDRZV2wxVTBSVlVuUkJURXdOQ25KdmJXRnViR0Z1YzJ0dmFpQmhkV2QxY2cwS0RRcHdiMnRsY2lCbWIyeDFjMmh5ZFVCbmJXRnBiQzVqYjIwZ1JHVnRaV3hoYmpGZ0RRcFhaWEowZVhWcGIzQXhNak0wTlEwS0RRcHpkR1ZsYldsMElHWnZiSFZ6YUhKMVFHZHREUXBRTlV0aVRESnpXRGRIZVdGR2MwWmtiM05HUVhKSWVEUXlVRzlwWmxwdlYxRm1TM2hxUVRGT2RrUmpSR2xDZURkMU0wZFpJQTBLVURWS1JGSnVkRGw0ZGtGdE5XTnRXRmQzYUdoV1pWZzJTRzlRUWpOQlUxaGlkR1owWmpsaVFWQlNRVzVDY1ZseGVtWlFSQTBLVDI1alpWVndiMjVCVkdsdFpTQTVPRFUyTXpVNE5TQndiMnNOQ210MWJtRWdVRFZLVlZjM1dWbEhTbFpDTmpJMFlWQjBRa1YxYTJWMFZVSkhaVUpNWmxJM1VVVTFRMFppVjI5RlNHUlhaVlJMU25kR1dBMEtjM1JsWlcxcGRDNWpiMjBnYVdkdmNubGhhMjkyWlc1cmJ5QlFOVXB0VkVad2FGcEVlRUZ3UmtoVFZFc3pOMlpLVWtoSVZqSjZUV3AyTTBWVk1WYzBlSGR2YW5kU2NVWk1aWEY1YjBGQ0RRcG5iMnh2Y3k1cGJ5QnBaMjl5ZVdGcmIzWmxibXR2SUZBMVNIazBja3d4UzFoSWVHSldORlkxZHpSaVYxWkVWbUp1TmxwUVFXUmtkVWhTYUZWWFpUbFRXbXBpWVc0eU4xTlRVVWdOQ2cwS1ptRmpaV0p2YjJzTkNpczROakUzTVRrMk56STJPVE0ySUEwSzBKalFzOUMrMFlEUmpDRFFyOUM2MEw3UXN0QzEwTDNRdXRDK0RRcHBaMjl5ZVdGcmIzWmxibXR2TVRNd016VXhRR2R0WVdsc0xtTnZiUTBLRFFvTkNtaDBkSEE2THk5eWRYUnlZV05yWlhJdWIzSm5JQ0J0WVhKbGFHZ2dZUTBLRFFwWFpYSjBlWFZwYjNBeE1qTTBOU0JzZFcxcFlUWXlOUzVwYm1adkRRcG1iM0oxYlVkeURRb2dDWGx2ZFdOMWRHVTVOMEJwYm1ScFlTNWpiMjBnVUc5NlpISWdkbXhoZVc5MURRcG1iM0oxYldkeWIyUnViMjVsZEVCbmJXRnBiQzVqYjIwZ1lXbHRaV3hzWlRFZ0lOQ1MwTDNRdU5DODBMRFF2ZEM0MExVaElOQy8wWURRdnRHSjBMVWcwWUxSZzlHQ0lBMEtSRElnYkhWdGFXRTJNalVnZEdWelkyOXpZV3hsUUhSMWRDNWllU0JoYVcxbGJHeGxNU0JVUlZQUW9kQ2VJRTFCVWt0RlZBMEtJQWxvWVhaaGJHOHlNREUwUUhsaGJtUmxlQzVyZWlCVGRXNXVlU0JJYjJ4cFpHRjVjeUJoTVEwS0lBbG9ZWFpoYkc4eU1ERTBRSGxoYm1SbGVDNTFZU0RRbXRHQTBMWFF2TkM5MExqUXVTQmhhVzFsYkd4bE1RMEtTRzl1YjNJZ00yTWdibTlyYVdFdE5qTU5DbHBVUlhNMU1Ua2dZVzVtWlhCcFkwQjVZVzVrWlhndVkyOXRJQ0FnMEwzUXNOQzAwTFhRdHRDOTBZdlF1U0RRdXRDdzBMb2cwTEhSZzlDNzBZdlF0dEM5MExqUXVpQTJNak16UkdWdFpXeGhiZzBLYVhaaGJuQnZjRzkyTFRJd01UVkFiV0ZwYkM1eWRTQkpkbUZ1VUc5d2IzWXhEUXBtYjJ4bFpHMWhiakZBYldGcGJDNXlkUTBLUkdWemFYSmxNekF3SUNCdGNpNXViMnRwWVRZelFHeHBjM1F1Y25VZ2JtOXJhV0V0TmpNZ1lXbHRaV3hzWlEwS2RtbDZZUzV5WldkcGMzUkFaMjFoYVd3dVkyOXREUXBtYjJ4bE1rQnRZV2xzTG5KMUlDQnViMnRwWVMweU5qTXdEUW9OQ25SbGMyTnZjMkZzWlVCNVlTNXlkU0J4ZDJWa2MyRjZlQTBLZEdWelkyOXpZV3hsUUhsaGJtUmxlQzV5ZFNCeGQyVmtjMkY2ZUEwS0RRb05DbXQxWm1GeURRcHpiR0Z1Wkc4TkNtOXNlQ0J5Wlc1aGJ6SXdNVEZBWjIxaGFXd3VZMjl0SURKaERRcG1iMnhsWkcxaGJrQm5iV0ZwYkM1amIyMGdOakl6TTBSbGJXVnNZVzROQ2cwS2NtRmthV05oYkNCaGJtWmxjR2xqUUhsaGJtUmxlQzV5ZFNCaGFXMWxiR3hsRFFvTkNreEtJR3RoYldsc1lUa3dEUXBtYjJ4bFpHMWhiZzBLRFFwMlkyVjBhU0JtYjJ4bE5FQnRZV2xzTG5KMURRbzFOVGMxTURVeU1qZ3hPVEE1TVRNd0RRb05DblIwWW5rTkNtbG5iM0o1WVd0dmRtVnVhMjh4TXpBek5URkFaMjFoYVd3dVkyOXREUXB1YjJ0cFlTMDJNalZBYldGcGJDNXlkUTBLWVc1bVpYQnBZMEI1WVc1a1pYZ3VZMjl0RFFwbmNtOWtibTlpWlhOMFFIbGhibVJsZUM1amIyME5DbWhoZG1Gc2J6SXdNVFJBZVdGdVpHVjRMbU52YlEwS1ptOXNaV1J0WVc1QWVXRnVaR1Y0TG1OdmJRMEtkbWw2WVM1eVpXZHBjM1JBWjIxaGFXd3VZMjl0SURaRWJnMEtkR1Z6WTI5ellXeGxRSFIxZEM1aWVRMEtkR1Z6WTI5ellXeGxRSGxoYm1SbGVDNXlkU0EyTWpNelJHVnRaV3hoYmcwS1ptOXNaV1J0WVVCMGRYUXVZbmtnWVdsdFpXeHNaUTBLWm05c1pURkFiV0ZwYkM1eWRTQXpORGt6TkRFMERRcDNZV05vYm1GNllYSXVZbmxBYldGcGJDNXlkUTBLWm05eWRXMW5jbTlrYm05dVpYUkFaeUF4TWpNMGNtWjJZMlJsZDNONGVrRWdOVFl3TnpRNE9TQXhPVGcxVUdGemFHRkNiMmQxYzJobGRtbGphQTBLY21WdVlXOHlNREV4UUdkdFlXbHNMbU52YlEwS1ptOXNaV1J0WVc1QWVXRm9iMjh1WTI5dERRcG1iMnhsWkcxaGJrQjFkQzVpZVEwS1ptOXNaV1J0WVc1QVoyMWhhV3d1WTI5dERRcGtaVzFsYkdGdVprQm5iV0ZwYkM1amIyME5DbWRtWkdaMlltNWlaMEJ0WVdsc0xuSjFJTkdFMFl2UXN0Q3cwTC9RdU5DODBZSFJoOUdQRFFvTkNtTjFkR1VnYUhSMGNEb3ZMM2QzZHk1cmFXNWtaMmx5YkhNdVkyOXRMM0JvYjNSdkxXRnlZMmhwZG1VTkNubHZkV04xZEdVNU4wQnBibVJwWVM1amIyMGdNVEl6TkhKbWRtTmtaWGR6ZUhwQklIVnpZUzVtMFlnTkNtMXZjbVVnYUdWeUlIQm9iM1J2Y3lCb2RIUndPaTh2ZFhKc2N5NW9kQzh4VVZNTkNuTm9aU0JwY3lCMlpYSjFJSE5sZUhrZ2FHVnlaU0JvZEhSd09pOHZkR2x1ZVM1all5OXJjREUxYTNnTkNtTjFkR1ZuWVd4c1pYSjVPVEZBYVc1a2FXRXVZMjl0SURFeU16UnlablpqWkdWM2MzaDZRUTBLRFFwbmIyeHZjdzBLVURWTFlUZGtjelp5ZGtkaFNIaFNObXRrTmtOMlpVeERXamg0YVdWaVJFVkZOVkZ6V1ZaeU9ITmlRMk5sZFdwb1RXRTVkU0JqY25sd2RHOWphR0Z1RFFwMFlYUnJZU0JRTlVveFMwSkVXbGR6Vm5kU05VeFVWazVOY1dGcFJtZHRaRXBJVkd0M2RsSXhWRU42T1daTlFYTkNUSGMwZVhONE4yTXlEUXBvWVhKa1ptOXlheUJRTlV0aWVtRTJRMXBoWmxRM1JGSTJTMmRJUjA0NGVVNTVPSFp5Y2pGRVFXWXlVVGhaUWxWVloyOW9XblZTU0hWMlJuUnBJR0Z5WkdGc2MzUmhibWRsYmpNTkNtVnlhV3RoY25SdFpXNGdVRFZJZVhOUmNIUnZjbVZZV0hwcVl6RlRPRFoyYUVST1dVRmxia3RwVkZWclEyVndXWEJ6ZURoalUyczVXRk5sT0doU1VBMEtjMjl6YVhOcmFTQlFOVWh6ZWtGS1JuVXpRemhxUzB4aFp6ZHJjRzlJZURsdlZUTk5TRnB0UkhoRU0wbzRkVXhPY1ZkUmFEaHJOVVE1WldScERRcHpjSEpoZG10aElGQTFTME00ZFdkYU5EWjZaRUU0ZFRZNVVqTnRSa3hhWVUxVk9IVXljRFZRVVZvNE5WQllibFpwY0VaaGVGSnVWR1U1ZURNTkNuUnZaR0Y1SUZBMVMwUkxOV2RpTkRkek5UaHVhbWRvTVc0eE0weHZVbUp1UWtKa2RISnhObXBTUVdoMFZVSlNhbmRyUTFJMGNYSjZTemNOQ21KcGRITm9ZWEpsY3lCUU5VdG1TbmRUUWxnelYzQTJSR0pJWVhGMmVHaGplVmhWVUVOaWFVVm1NM0ZaV25CbE4wbzRkelEyWWxwaFIxSllhWEpXSUNzNE5qRXpNamt4T0RJeU5UZzNJRkJ2YTJWdGIyNGdSMjhnRFFwd2IyUmhjbTlySUZBMVNqSjNja1ZLTVZsNmNsQTBNWGhZTTJrek0xaG1aM1pWTjNodU1qSnJka1l6U0RsVFlsVnJkV2wxUzFWWWEwSmlhMDRnWjNKdlpHNXZZbVZ6ZEVCNVlXNWtaWGd1YTNvZ0tESTFOemcxTVRJek9DQTJSRzRnUjI5c2IzTWdSMkpuSU5DeTBMRFF1OUdQMFlUUXZ0R0MwTDRwRFFwM1lYWmxjeUJRTlV0RE56Rm9Wa2hEVEdGaWMydDVOVXhhYlU1dVNFMXhOMDExTkhoRVRqTktSRmRrVEhSbFRYVjVkak5yWW01VVRITkxJRkExU2tWbFZrNURRalZ6VVhCS2RERkZlbGxITkdsVFRHbHBOMVkwYjNOMVJHZEdNM2RrWVdGdU5HaHpRbnAwTW5NM1FsQWdabTlzWldSdFlXNXVRSFIxZEM1aWVRMEtaRzlzYkdGeUlGQTFTSGRvZFVGSGMxZDVUSE0yVUdjek1VVlRaMVZHT0VOTlJGb3pUVm95VVZoNVEwcGhXRGhVUVRkU2MyWm1TalpGWTJjZ0lHWnZiR1ZrYldGQWRIVjBMbUo1RFFwRVQweE1RVkpUSUZBMVNsQjFWSGxRY1RWM00zaHhWMUpNWjJGNlExWlNaalpJVlhkVlpWVlFjbFZuZGpOT2RsUkNNa1IyZUhNelIxQnhOMFFnYldGeWFHRjBkR1Z5UUhSMWRDNWllUTBLWVc1NWIyNWxJRkExU3pGMmRtOVRNMkphVkdOdlkxUkNTMkpaWWpaNlJFNVNaMHBLWjJGcWVVcGhVamxsUVhWS1lVUnVWRGxCZVZWeFNtSWdZbWxuZW5wQWRDQm1ZV05sWW05dmF5QlNhV05vWVhKa0lFUmhiZzBLVGs5U1IwVWdVRFZLVVdaeE5VcGFWVzQxT1hCb1drUnphSGxZVVc1NFpsZHRkalpaZUVjM1YwUk5UbVZxVG1KbFp6bDJSWEZPV25CemFDQWdabTlzWlRSQWJRMEtkSFZ0YlhrZ1VEVkxhR2wzVEhaYVNFbzVWVXhuYjBWRFFYSk1Ra3RwWmtGQ1luWjNXVU40VURkMmVuZFlSbXBRU2xWVVVXUkhUSE5SU3lBb2FYWmhiaTVtWVd0bE1qQXhOMEI1WVc1a1pYZ3VjblVnTWprZ016STFJREF5TURBZ05rUnVLUTBLY205dFlXNXNZVzV6YTI5cUlGQTFTekYxUWs1S1YxQkdjRlpGWVc1MFJtVTVNMHhvWlZwbk1qTmxOMUUwUkhSa2JVNXphV2xqZUdKdlZWcGtiVFo1VTBZZ1VEVktSRkp1ZERsNGRrRnROV050V0ZkM2FHaFdaVmcyU0c5UVFqTkJVMWhpZEdaMFpqbGlRVkJTUVc1Q2NWbHhlbVpRUkNCbmIyeHZjeUFOQ21kaGNtRnVkQ0JRTlVzNGRqWmhZWHBwUjIxck9IRnVlbFJ5VGxwUVVVTlFNVUYzWkVneE1XMU5lV296V25jMVJuUjRjVXczYjI4MWNVVndEUXBuY205a2JtOGdVRFZMU21kSWFVeDRia0pUTTJGMWVVMWxPVzVRTldWVk1VRnlabk5VYzIxcE9WRnlZVnBEYVZGQ1YwNXFPSGxhV1hCdFlRMEtjMkZrYjNadlpITjBkbThnVURWTFRURlFSblprVXpOUmNXdEVXSFpsUlZGdldYZFhZbVpTY0dkcU5XOVNORWhUT1ZCcE0wRTNWVzFSY25FM1VYUmpRUTBLZVc5aWFYUWdVRFZLVjNobFlrcHhhMlJ2VTFCd1pUTlZOMlo2Y1ZkdVJuSm9jazFMYXpKelpWbFFaek5LYXpSVmR6ZHRVMmhRVjJGVlN3MEtiVzlzYjJ0dklGQTFTMlp1TWt4U2JrTlVlVXhyTVdodU5WbzRWVkozTkRWWE9XSmpia1ZaUnpWRU0wUm5WMWwxWm1rMk9FVTBWM1E0UzAwTkNteHZkRzlzYjNSdklGQTFTbHBUUzBST1pVUk9ORU5hVGxwd09GTlhZbWRuUjJaR05ta3lSMGRIUkhaM1VWcFNiamxYTTFGWU9XTmliMnBVYW5nTkNtdHlZWEJwZG1FZ1VEVkxUVVJGVFZkR05uZFNlVmw0YUhaSFRVUkdiVE42T1ZGTE9FNVRha1psVWsxaE9GTnVaMVF6YjNRMlVFaHdhVVJuUkEwS2JHOTBieUJRTlVwV05sRnBXVnBNYmxacU5uUm5jM1ZxYVROSWFFUkdWR05DTlRjMVkwRlFXakpJWTBjMFRERllkbkJyYVVSWmQybHpEUXBwWjI5eWVXRnJiM1psYm10dklGQTFTSGswY2t3eFMxaEllR0pXTkZZMWR6UmlWMVpFVm1KdU5scFFRV1JrZFVoU2FGVlhaVGxUV21waVlXNHlOMU5UVVVnTkNnMEtjM1JsWlcwZ2FYUU5DbEExUzJKTU1uTllOMGQ1WVVaelJtUnZjMFpCY2toNE5ESlFiMmxtV205WFVXWkxlR3BCTVU1MlJHTkVhVUo0TjNVelIxa2dabTlzZFhOb2NuVkFEUXBRTlV0UlV6RnVOVU51WTNsMWIyOVlRVk14Y0dJMmNGZ3hhbFV5TVZsVE5HUmFOMVJTVEZaSFRreDJTM1IwYW1Ka2F6TlFEUW9OQ21aaFkyVmliMjlySU5DejBMN1F1OUMrMFlFTkNtSnBaM3A2UUhSMWRDNWllU0F5T1NBek1qVXdNakF3SUZBMVN6RjJkbTlUTTJKYVZHTnZZMVJDUzJKWllqWjZSRTVTWjBwS1oyRnFlVXBoVWpsbFFYVktZVVJ1VkRsQmVWVnhTbUlOQ2cwS1pIVnliM1pySU5DejBMN1F1OUMrMFlFTkNpczROakUzTVRNeE9Ea3pPRE0wSURaRWJpQnpiM05wYzJ0cERRcHBkbUZ1TG1aaGEyVXlNREUzUUhsaGJtUmxlQzV5ZFNBeU9TQXpNalVnTURJd01DQTJSRzRnRFFveU5UYzROVEV5TXpnZ05rUnVJRWR2Ykc5eklFZGlaeURRc3RDdzBMdlJqOUdFMEw3Umd0QytEUW9yT0RZeE56RTVOakl4TkRFMU15RFF2OUMrMExyUXRkQzgwTDdRdlNBMlJHNE5DZzBLY205dFlXNXNZVzV6YTI5cU9USkFiV0ZwYkM1eWRTQXlOU0E1TVRJNU5qWTJJRFpFYmcwS1lXNW1aWEJwWTBCNVlXNWtaWGd1Y25VZ05EVTFOelUyTXpJSklGSnZiV0Z1SUVGdVptVndhV01nV1hnZ1VtVjZkWE1OQ21admJHVmtiVzVBZEhWMExtSjVJRWwyWVc0Z1VHVjBjbTkyYVdOb0lOR0UwTDdSZ3RDK0lOQ2IwTGpRdXRDNERRcG1iMnhsWkcxQWRIVjBMbUo1SURRMU5UYzFOak15SU5DUzBMalF1dEdDMEw3UmdDQm1iMnhsWkcwZ2RIUWcwSkRRdTlDMTBMclJnZEN3MEwzUXROR0EwTDdRc3RDNDBZY05DbVp2YkdWa2JXRnVia0IwZFhRdVlua2dORFUxTnpVMk16SWcwS0xRc05HQzBZelJqOUM5MExBZzBKTFF0ZEdBMEwzUXNOR1BEUXBtYjJ4bFpHMWhRSFIxZEM1aWVTQTJSQzBnTWpVMk1UQTFNakU1SU5DYTBMRFJndEdQSU5DOTBMWFJnaURRdU5DODBMWFF2ZEM0SU5DbjBMalJnZEdDMEw3UXN0QzQwWWJRdXRDdzBZOE5DZzBLUkhObUlFUnpaaUFvWm05c1pUSWdiV0ZwYkNrTkNtWnZiR1UwUUcxaGFXd3VjblVnS2lBMlJHNHRMU0JRTlVwUlpuRTFTbHBWYmpVNWNHaGFSSE5vZVZoUmJuaG1WMjEyTmxsNFJ6ZFhSRTFPWldwT1ltVm5PWFpGY1U1YWNITm9EUXBtYjJ4bE5VQnRZV2xzTG5KMUlFeHJhbWhuWm1NZ1NHSjJJRE16TXpRNU16UXhOQTBLWm05c1pUWkFiV0ZwYkM1eWRTRFFvTkMrMEx6UXNOQzlJTkNrMEw3UXU5R08wWWdOQ21admJHVmtiV0Z1YVVCMGRYUXVZbmtnMEtEUXZ0QzgwTERRdlNEUWxOQzEwTHpRdGRDNzBMalF2UTBLTWpVM01EVTJNRGc0RFFvMk1EQXpNREU1RFFvM09EazNOak00RFFveU5UY3pNelF5TnpnZ0RRb3lPVGM0TURNMU16a05Dakk1TnpnNU1URTRPUTBLTWprM09EQXpPRFE0RFFvTkNtWnZkRzl6ZEEwS1ptOXNaV1J0WVVCMGRYUXVZbmtnTmpJek0wUmxiV1ZzWVc0TkNtSnBaM3A2UUhSMWRDNWllUTBLRFFwd2IydGxiVzl1SU5DNzBMN1FzOUM0MEwwZ2EyRnljR2xyWDNOc2IzY2cwTC9Rc05HQTBMN1F1OUdNSURJek1EVTRPUTBLRFFwaGJHbGxlSGdOQ2lCbWIyeGxORUJ0WVdsc0xuSjFJQTBLWjNKdlpHNXZZbVZ6ZEVCNVlXNWtaWGd1WTI5dERRcG1iMnhsWkcxaGJrQm5iV0ZwYkM1amIyME5DZzBLZEhkcGRIUmxjaTVqYjIwZ2NtVnVZVzh5TURFeFFHZHRZV2xzTG1OdmJTQTJSRzROQ2cwS2IzQnBkVzBnWlc1amNubHdkQ0JsYm1admNtTmxiV1Z1ZENCMmFXTjBhVzBnYUdGamF5Qm9aV0Z5RFFwMGRXMXRlU0JoYVcxbGJHeGxNU0JvZEhSd09pOHZjSGR2WVdnM1ptOWhObUYxTW5CMWJDNXZibWx2YmcwS0RRb05DbWgwZEhBNkx5OXlkUzV3YjJ0bGNuTjBjbUYwWldkNUxtTnZiUzhnWm05c1pXUnRZVUIwZFhRdVlua2dNalEyTXpVMU0yRnBiV1ZzYkdVbj0=
*/

contract Ownable {
  address  owner;
  function Ownable() {
    owner = msg.sender;
  }
}
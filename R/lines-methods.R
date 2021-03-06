#' @rdname plotting-methods-distribution
#' @aliases lines,distribution-method
setMethod("lines",
          signature = signature(x="distribution"),
          definition = function(x, length.out=1000, ...) {
            x_values = x$pl_data$x
            x_axs = lseq(x$xmin, max(x_values), length.out)
            y = dist_cdf(m, x_axs, FALSE)
            lines(x_axs, y, ...)
          }
)

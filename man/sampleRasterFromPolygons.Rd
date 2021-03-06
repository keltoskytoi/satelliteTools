% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sampleRasterFromPolygons.R
\docType{methods}
\name{sampleRasterFromPolygons}
\alias{sampleRasterFromPolygons}
\alias{sampleRasterFromPolygons,RasterBrick-method}
\alias{sampleRasterFromPolygons,RasterLayer-method}
\alias{sampleRasterFromPolygons,RasterStack-method}
\alias{sampleRasterFromPolygons,Satellite-method}
\title{Sample raster values from polygons}
\usage{
\S4method{sampleRasterFromPolygons}{Satellite}(x, bcde, mask = NULL, ...)

\S4method{sampleRasterFromPolygons}{RasterStack}(x, poly, nbr = 50,
  res = raster::res(x), ...)

\S4method{sampleRasterFromPolygons}{RasterBrick}(x, poly, nbr = 50,
  res = raster::res(x), ...)

\S4method{sampleRasterFromPolygons}{RasterLayer}(x, poly, nbr = NULL, ...)
}
\arguments{
\item{x}{Satellite object, raster stack or raster layer.}

\item{mask}{A \code{raster::RasterLayer} in which area of interest are marked
with 1, NA otherwise.}
}
\value{
If x is a Satellite object, a Satellite object with added image
textures; if x is a \code{raster::Raster*} object, a \code{raster::Raster*} 
object with converted layer(s).
}
\description{
In the default settings, this is just a wrapper arround
raster::extract but with additional options in oder to select just a 
subsample of the extracted raster values based on properties of the size
of the polygons. The reason behind this is to be able to use e.g. 
training polygons for land-cover classifications of very different sizes 
without running into problems during model delevopment later.
}
\details{
The method is a wrapper for raster:extract with some extensions
}
\examples{
\dontrun{
}
}
\references{
None.
}


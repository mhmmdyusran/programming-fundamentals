ThisBuild / scalaVersion := "3.3.1"
ThisBuild / organization := "fundamentals"
ThisBuild / version      := "1.0-SNAPSHOT"

lazy val root = (project in file("."))
  .settings(
    name := "programming-fundamentals",
    libraryDependencies ++= Seq(
      "org.scala-lang.modules" %% "scala-parser-combinators" % "2.3.0"
    )
  )
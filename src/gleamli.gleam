import gleam/erlang/process
import gleam/io
import gleam_community/ansi
import spinner

pub fn main() {
  let spinner =
    spinner.new("Baking Bread for Toasters")
    |> spinner.with_colour(ansi.cyan)
    |> spinner.start

  process.sleep(1000)
  spinner.set_text(spinner, "Compositing Vampiric Complexions")
  spinner.set_colour(spinner, ansi.pink)

  process.sleep(1000)
  spinner.set_text(spinner, "Routing Neural Network Infanstructure")
  spinner.set_colour(spinner, ansi.yellow)

  process.sleep(1000)
  spinner.set_text(spinner, "Timing Temperature Transference")
  spinner.set_colour(spinner, ansi.blue)

  process.sleep(1000)
  spinner.stop(spinner)
  io.println("✅ Done!")
}

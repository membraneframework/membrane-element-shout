module Membrane.Element.Shout.Sink.Native

callback :load, :on_load
callback :unload, :on_unload

spec create(host :: string, port :: unsigned, password :: string, mount :: string) ::
       {:ok :: label, state} | {:error :: label, {:internal :: label, atom}}

spec start(state) ::
       (:ok :: label)
       | {:error :: label, :already_started :: label}
       | {:error :: label, {:internal :: label, atom}}

spec stop(state) ::
       (:ok :: label)
       | {:error :: label, :not_started :: label}
       | {:error :: label, {:internal, atom}}

spec write(payload, state) ::
       (:ok :: label)
       | {:error :: label, {:internal :: label, atom}}

sends {:native_demand :: label, size :: unsigned}
sends {:native_error :: label, {:shout_open :: label, error_msg :: string}}
sends {:native_error :: label, {:shout_send :: label, error_msg :: string}}

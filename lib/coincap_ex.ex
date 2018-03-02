defmodule CoinCap do
  use Tesla, docs: false

  @moduledoc """
  CoinCap Client Module for Elixir (see https://github.com/CoinCapDev/CoinCap.io)
  """

  plug(Tesla.Middleware.BaseUrl, "http://coincap.io")
  plug(Tesla.Middleware.JSON)

  @doc """
  Get coins

  ## Example

      iex(1)> CoinCap.coins
      {:ok,
       ["300", "611", "808", "888", "EOS", "QSP", "MONA", "PLBT", "SRC", "BLOCKPAY",
        "POT", "VIA", "OCL", "ICN", "XLM", "LBC", "HPB", "BTM2", "APX", "LSK", "LOG",
        "AIR", "YTN", "XNN", "NOBL", "POP", "PHO", "XLR", "XPM", "TRDT", "PBL", "MNX",
        "ICE", "REC", "XAUR", "BUMBA", "SOJ", "REX", "XRE", "MUSIC", "URO", "MILO",
        "CL", "WISH", "WOMEN", "EMD", "HORSE", "MAX", ...]}

  """
  def coins() do
    request = get("/coins/")

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def coins!() do
    {_status, body} = coins()
    body
  end

  def map() do
    request = get("/map/")

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def map!() do
    {_status, body} = map()
    body
  end

  def front() do
    request = get("/front/")

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def front!() do
    {_status, body} = front()
    body
  end

  @doc """
  Get global data

  ## Example

      iex(4)> CoinCap.global
      {:ok,
       %{
         "altCap" => 273309135246.36258,
         "bitnodesCount" => 11512,
         "btcCap" => 188303518800,
         "btcPrice" => 11124.678525677316,
         "dom" => 81.06,
         "totalCap" => 461612654046.3616,
         "volumeAlt" => 434974294.3048591,
         "volumeBtc" => 1861181248.8378923,
         "volumeTotal" => 2296155543.14275
       }}

  """
  def global() do
    request = get("/global/")

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def global!() do
    {_status, body} = global()
    body
  end

  @doc """
  Get all information about a symbol

  ## Example
  iex(5)> CoinCap.page("BTC")

      {:ok,
       %{
         "_id" => "179bd7dc-72b3-4eee-b373-e719a9489ed9",
         "altCap" => 273311640446.9097,
         "alt_name" => "bitcoin",
         "bitnodesCount" => 11512,
         "btcCap" => 188303518800,
         "btcPrice" => 11155.255799758635,
         "cap24hrChange" => 5.89,
         "display_name" => "Bitcoin",
         "dom" => 81.09,
         "id" => "BTC",
         "market_cap" => 188466652329.94717,
         "price" => 11145.6,
         "price_btc" => 1,
         "price_eth" => 12.78309428076488,
         "price_eur" => 9069.970331649482,
         "price_ltc" => 53.11677360977898,
         "price_usd" => 11155.255799758635,
         "price_zec" => 28.35666134745666,
         "rank" => 1,
         "status" => "available",
         "supply" => 16894875,
         "totalCap" => 461615159246.90875,
         "type" => "cmc",
         "volume" => 8512890000,
         "volumeAlt" => 435603646.8557662,
         "volumeBtc" => 1867794474.2766063,
         "volumeTotal" => 2303398121.132372,
         "vwap_h24" => 10860.437012671366
       }}

  """
  def page(symbol) do
    request = get("/page/" <> symbol)

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def page!(symbol) do
    {_status, body} = page(symbol)
    body
  end

  def history(symbol) do
    request = get("/history/" <> symbol)

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def history!(symbol) do
    {_status, body} = history(symbol)
    body
  end

  def history_1day(symbol) do
    request = get("/history/1day/" <> symbol)

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def history_1day!(symbol) do
    {_status, body} = history_1day(symbol)
    body
  end

  def history_7day(symbol) do
    request = get("/history/7day/" <> symbol)

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def history_7day!(symbol) do
    {_status, body} = history_7day(symbol)
    body
  end

  def history_30day(symbol) do
    request = get("/history/30day/" <> symbol)

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def history_30day!(symbol) do
    {_status, body} = history_30day(symbol)
    body
  end

  def history_90day(symbol) do
    request = get("/history/90day/" <> symbol)

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def history_90day!(symbol) do
    {_status, body} = history_90day(symbol)
    body
  end

  def history_180day(symbol) do
    request = get("/history/180day/" <> symbol)

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def history_180day!(symbol) do
    {_status, body} = history_180day(symbol)
    body
  end

  def history_365day(symbol) do
    request = get("/history/365day/" <> symbol)

    case request.status do
      200 -> validate_body({:ok, request.body})
      _ -> {:error, "Error! Status: #{request.status}, Url: #{request.url}"}
    end
  end

  @doc false
  def history_365day!(symbol) do
    {_status, body} = history_365day(symbol)
    body
  end

  defp validate_body({:ok, nil}) do
    {:error, "The page or symbol not exist or the request is invalid"}
  end
  defp validate_body(tuple), do: tuple
end

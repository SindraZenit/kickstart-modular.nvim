return {
  {
    -- 1. Definisci quale plugin installare (repo GitHub)
    'brenoprata10/nvim-highlight-colors',

    -- 2. OPZIONALE: carica il plugin solo per certi file (ottimizzazione)
    --    Togli il commento se vuoi caricarlo solo per CSS, HTML, ecc.
    -- event = "BufReadPre",  -- carica quando apri un file

    -- non carica automaticamente il file
    lazy = true,

    -- Crea un comando per attivarlo quando serve
    cmd = 'HighlightColorsToggle',

    -- 3. Configurazione del plugin
    --    'config' è una funzione che Lazy esegue DOPO aver caricato il plugin
    config = function()
      -- Abilita i colori veri (necessario per questo plugin)
      vim.opt.termguicolors = true

      -- Ora SÌ che puoi usare require, perché il plugin è caricato
      require('nvim-highlight-colors').setup {
        -- Configurazione base (puoi personalizzare dopo)
        render = 'background', -- 'background', 'foreground' o 'virtual'
        enable_named_colors = true,
        enable_tailwind = false,
      }

      -- Attiva automaticamente dopo il caricamento
      vim.cmd 'HighlightColors On'
    end,
  },
}

return {
{'jakewvincent/mkdnflow.nvim',
        name = 'mkdnflow',
        lazy = false,
        ext = 'md',
        config = function()
            require('mkdnflow').setup({
                mappings = {
                   MkdnEnter = {{'i', 'n', 'v'}, '<CR>'}
                },
                links = {
                    transform_explicit = function(input)
                                            return("./"..input)
                                            end,
                    -- transform_implicit = function(input)
                                            -- if input:match('%d%d%-%d%d-d%d%d%d%') then
                                              -- return('journals/'..input)
                                            -- else
                                              -- return(input)
                                            -- end
                                          -- end,
                    name_is_source = false,
                    conceal = true,
                    },
                modules = {
                    yaml = true,
                    cmp = true
                    },
                perspective = {
                    priority = 'first',
                    root_tell = '.zk'
        }
                -- Config goes here; leave blank for defaults
            })
        end,
 }
}

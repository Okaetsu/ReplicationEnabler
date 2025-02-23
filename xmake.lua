local projectName = "ReplicationEnabler"

includes("deps")

rule("CXXLatest")
add_deps("ue4ss.mod", {order = true})
after_load(function(target) 
    target:set("languages", "cxxlatest")
end)
rule_end()

target(projectName)
    add_rules("CXXLatest")
    add_includedirs("include")
    add_headerfiles("include/**.hpp")
    add_files("src/**.cpp")
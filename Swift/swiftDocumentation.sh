#jazzy documentation

#vars
SWIFT_VERSION="2.1.1"
COPYRIGHT="Mt. Aden 2016"

swift-ver = `swift --version | awk -v OFS=' ' '{print $4}'`
echo $swift-ver
#ducumentation

jazzy --swift-version $swift-ver --clean --min-acl internal --author "Alok Choudhary" --xcodebuild-arguments -scheme,FaceMorpheus --output docs --docset-path docset --copyright $COPYRIGHT \
    --skip-undocumented
    #comment

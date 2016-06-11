#jazzy documentation
SWIFT_VERSION="2.1.1"
COPYRIGHT="Mt. Aden 2016"
jazzy --swift-version $SWIFT_VERSION --clean --min-acl internal --author "Alok Choudhary" --xcodebuild-arguments -scheme,FaceMorpheus --output docs --docset-path docset --copyright $COPYRIGHT \
    --skip-undocumented
    #comment
    
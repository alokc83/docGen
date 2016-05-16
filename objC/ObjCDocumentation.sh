#appledoc Xcode script
# Start constants
company="Mt.Aden";
companyID="com.mtaden";
companyURL="http://mtaden.com";
target="iphoneos";
#target="macosx";
outputPath="${PROJECT_DIR}/Documentation";
# End constants
if [ $outputPath ]; then
/usr/bin/appledoc \
--project-name "${PROJECT_NAME}" \
--project-company "${company}" \
--company-id "${companyID}" \
--ignore "Pods" \
--docset-atom-filename "${company}.atom" \
--docset-feed-url "${companyURL}/${company}/%DOCSETATOMFILENAME" \
--docset-package-url "${companyURL}/${company}/%DOCSETPACKAGEFILENAME" \
--output "${outputPath}" \
--publish-docset \
--docset-platform-family "${target}" \
--logformat xcode \
--keep-intermediate-files \
--no-repeat-first-par \
--no-warn-invalid-crossref \
--exit-threshold 2 \
"${PROJECT_DIR}"
else
mkdir "${PROJECT_DIR}/Documentation"
fi

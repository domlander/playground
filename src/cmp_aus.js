
const pageLoadBlueprint = async function () {
	return true;
};

exports.handler = async () => {
	return await pageLoadBlueprint();
};

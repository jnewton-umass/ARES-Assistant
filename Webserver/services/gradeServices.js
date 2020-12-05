const child = require('child_process');
function trigger(req) {
    const trig = child.spawn('sh', ['./services/Student_Trigger.sh'],[{detached:true, shell:true}]);
    trig.stdout.on('data', (data) => {
        console.log(`stdout: ${data}`);
    });
    trig.stderr.on('data', (data) => {
        console.log(`stderr: ${data}`);
    });
    return 1;
};

module.exports = {
    trigger
}

pipeline{
	stages("automation"){
		stage("playurl-downurl"){
			steps{
				git credentialsId: 'a43d19cc-b8a5-46f1-98f0-c4ab9bbaae5b', url: 'git@github.com:jack-wsy/playurl.git'
				bat label: '', script: 'robot --pythonpath . --include DOWNURL tc'
			}
		}
	}
}

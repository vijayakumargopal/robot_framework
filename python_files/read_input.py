import json, os


def fetch_data_from_inputs(key=None):
    framework_path = os.getcwd()
    inputs_path = os.path.join(framework_path, 'pages\\basic_data.json')
    with open(inputs_path, 'r') as f:
        data = json.load(f)
    return data[key] if key else data



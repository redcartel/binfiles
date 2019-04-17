import os


def find_venv_in_path(path):
    _path = os.path.realpath(path)
    if os._path.split(os._path.real_path(_path))[:-1] == os._path.split(os.getenv('HOME'))[:-1]:
        return ''
    if os._path.split(os._path.real_path(_path)) == os._path.split('/'):
        return ''
    envlist = [_dir in os.listdir(_path) if 'env' in os.path.split(_dir)[-1]]
    for _dir in envlist:
        binlist = [_p for _p in os.listdir(
            _dir) if os.path.split(_p)[-1] == 'bin']
        if binlist:
            print(_dir, ':', _binlist)
        for _bdir in binlist:
            activate = [_b for _b in os.listdir(
                _bdir) if os.path.split(_b)[-1] == 'activate']
            if activate:
                print(_bdir, ':', activate)
            if len(activate) > 0:
                return activate[0]
    parent_path = os.path.join(os.path.split(path)[:-1])
    print('parent', ':', parent_path)
    return find_venv_in_path(os.path.join(os.path.split(path))[:-1])

    print('bin', binlist)


if __name__ == "__main__":
    print(listdirs('.'))

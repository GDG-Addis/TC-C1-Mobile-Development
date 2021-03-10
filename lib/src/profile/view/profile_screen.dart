import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileCubit>()..get(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          leading: const BackButton(color: Colors.black),
          title: const Text(
            'Profile',
            style: TextStyle(
              color: Color(0xff373535),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        body: Builder(
          builder: (context) => RefreshIndicator(
            onRefresh: context.read<ProfileCubit>().refresh,
            child: BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) => state.maybeWhen(
                error: (error) => _ProfileErrorWidget(error: error),
                loaded: (profile) => _Profile(profile: profile),
                orElse: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Profile extends StatelessWidget {
  final Profile profile;

  const _Profile({Key key, @required this.profile})
      : assert(profile != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 24),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[900],
                child: const Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                '${profile.fullName.firstName} ${profile.fullName.lastName}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                '@${profile.username}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xffB5B4B2),
                ),
              ),
              const SizedBox(height: 24),
              _ProfileTile(
                title: 'First Name',
                value: profile.fullName.firstName,
              ),
              const Divider(),
              _ProfileTile(
                title: 'Last Name',
                value: profile.fullName.lastName,
              ),
              const Divider(),
              _ProfileTile(title: 'My Email', value: profile.email),
              const Divider(),
              _ProfileTile(
                title: 'My Address',
                value: '${profile.address.zipcode}, ${profile.address.street}, '
                    '${profile.address.city}',
              ),
              const Divider(),
              _ProfileTile(title: 'My Phone', value: profile.phone),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileErrorWidget extends StatelessWidget {
  final String error;

  const _ProfileErrorWidget({Key key, @required this.error})
      : assert(error != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          error,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 16),
        Align(
          child: RaisedButton(
            onPressed: context.read<ProductsCubit>().refresh,
            child: const Text('Retry'),
          ),
        ),
      ],
    );
  }
}

class _ProfileTile extends StatelessWidget {
  final String title;
  final String value;

  const _ProfileTile({Key key, @required this.title, @required this.value})
      : assert(title != null),
        assert(value != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff373535),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              color: Color(0xff373535),
            ),
          ),
        ],
      ),
    );
  }
}

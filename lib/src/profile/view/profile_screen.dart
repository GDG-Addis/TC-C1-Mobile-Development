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
        backgroundColor: const Color(0xffEDECE7),
        appBar: AppBar(
          backgroundColor: const Color(0xffEDECE7),
          brightness: Brightness.light,
          elevation: 0.0,
          title: Text(
            "Profile",
            style: TextStyle(
              color: const Color(0xff373535),
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
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
                orElse: () => _ProfileLoadingWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileLoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: const CircularProgressIndicator());
  }
}

class _ProfileErrorWidget extends StatelessWidget {
  final String error;

  const _ProfileErrorWidget({Key key, this.error})
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
            child: Text('Retry'),
          ),
        ),
      ],
    );
  }
}

class _Profile extends StatelessWidget {
  final Profile profile;

  const _Profile({Key key, this.profile})
      : assert(profile != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 24.0),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.grey[900],
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Text(
                "${profile.fullName.firstName} ${profile.fullName.lastName}",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                "@${profile.username}",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xffB5B4B2),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              _ProfileTile(
                title: "First Name",
                value: "${profile.fullName.firstName}",
              ),
              Divider(),
              _ProfileTile(
                title: "Last Name",
                value: "${profile.fullName.lastName}",
              ),
              Divider(),
              _ProfileTile(
                title: "My Email",
                value: "${profile.email}",
              ),
              Divider(),
              _ProfileTile(
                title: "My Address",
                value:
                    "${profile.address.zipcode}, ${profile.address.street}, ${profile.address.city}",
              ),
              Divider(),
              _ProfileTile(
                title: "My Phone",
                value: "${profile.phone}",
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileTile extends StatelessWidget {
  final String title;
  final String value;

  const _ProfileTile({
    Key key,
    this.title,
    this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title",
            style: TextStyle(
              color: Color(0xff373535),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "$value",
            style: TextStyle(
              color: Color(0xff373535),
            ),
          ),
        ],
      ),
    );
  }
}

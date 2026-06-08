.class public final Lio/sentry/DefaultVersionDetector;
.super Ljava/lang/Object;
.source "DefaultVersionDetector.java"

# interfaces
.implements Lio/sentry/IVersionDetector;


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/sentry/DefaultVersionDetector;->options:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public checkForMixedVersions()Z
    .locals 2

    .line 17
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/DefaultVersionDetector;->options:Lio/sentry/SentryOptions;

    .line 18
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getFatalLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryIntegrationPackageStorage;->checkForMixedVersions(Lio/sentry/ILogger;)Z

    move-result v0

    return v0
.end method

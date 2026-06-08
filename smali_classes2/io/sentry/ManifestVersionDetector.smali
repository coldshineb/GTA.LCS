.class public final Lio/sentry/ManifestVersionDetector;
.super Ljava/lang/Object;
.source "ManifestVersionDetector.java"

# interfaces
.implements Lio/sentry/IVersionDetector;


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/sentry/ManifestVersionDetector;->options:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public checkForMixedVersions()Z
    .locals 2

    .line 18
    invoke-static {}, Lio/sentry/internal/ManifestVersionReader;->getInstance()Lio/sentry/internal/ManifestVersionReader;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/internal/ManifestVersionReader;->readManifestFiles()V

    .line 19
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ManifestVersionDetector;->options:Lio/sentry/SentryOptions;

    .line 20
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getFatalLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryIntegrationPackageStorage;->checkForMixedVersions(Lio/sentry/ILogger;)Z

    move-result v0

    return v0
.end method

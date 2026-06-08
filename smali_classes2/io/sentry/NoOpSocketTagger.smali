.class public final Lio/sentry/NoOpSocketTagger;
.super Ljava/lang/Object;
.source "NoOpSocketTagger.java"

# interfaces
.implements Lio/sentry/ISocketTagger;


# static fields
.field private static final instance:Lio/sentry/NoOpSocketTagger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lio/sentry/NoOpSocketTagger;

    invoke-direct {v0}, Lio/sentry/NoOpSocketTagger;-><init>()V

    sput-object v0, Lio/sentry/NoOpSocketTagger;->instance:Lio/sentry/NoOpSocketTagger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/ISocketTagger;
    .locals 1

    .line 12
    sget-object v0, Lio/sentry/NoOpSocketTagger;->instance:Lio/sentry/NoOpSocketTagger;

    return-object v0
.end method


# virtual methods
.method public tagSockets()V
    .locals 0

    return-void
.end method

.method public untagSockets()V
    .locals 0

    return-void
.end method

.class Lio/sentry/android/core/ContextUtils$SplitApksInfo;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/ContextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplitApksInfo"
.end annotation


# static fields
.field static final SPLITS_REQUIRED:Ljava/lang/String; = "com.android.vending.splits.required"


# instance fields
.field private final isSplitApks:Z

.field private final splitNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Z[Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean p1, p0, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->isSplitApks:Z

    .line 77
    iput-object p2, p0, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->splitNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSplitNames()[Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->splitNames:[Ljava/lang/String;

    return-object v0
.end method

.method public isSplitApks()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->isSplitApks:Z

    return v0
.end method

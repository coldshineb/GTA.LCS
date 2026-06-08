.class public final Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;
.super Landroid/app/Activity;
.source "LucidOBBDownloaderActivity.kt"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLucidOBBDownloaderActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LucidOBBDownloaderActivity.kt\ncom/rockstargames/gtalcs/LucidOBBDownloaderActivity\n+ 2 com.google.android.play:asset-delivery-ktx@@2.1.0\ncom/google/android/play/core/ktx/AssetPackManagerKtxKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,340:1\n43#2:341\n44#2:342\n3#2,2:343\n3#2:345\n3#2:346\n44#2:347\n4#2:348\n4#2:349\n5#2,5:350\n3#2:355\n2#2:357\n46#2:358\n43#2:359\n2#2:360\n46#2:361\n1869#3:356\n1870#3:362\n37#4:363\n36#4,3:364\n37#4:367\n36#4,3:368\n*S KotlinDebug\n*F\n+ 1 LucidOBBDownloaderActivity.kt\ncom/rockstargames/gtalcs/LucidOBBDownloaderActivity\n*L\n113#1:341\n221#1:342\n221#1:343,2\n223#1:345\n251#1:346\n265#1:347\n272#1:348\n274#1:349\n275#1:350,5\n277#1:355\n296#1:357\n296#1:358\n296#1:359\n299#1:360\n301#1:361\n290#1:356\n290#1:362\n313#1:363\n313#1:364,3\n314#1:367\n314#1:368,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 62\u00020\u00012\u00020\u0002:\u00016B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001bH\u0014J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0002J\u0008\u0010#\u001a\u00020\u001bH\u0002J\u0012\u0010$\u001a\u00020\u001b2\u0008\u0008\u0002\u0010%\u001a\u00020\"H\u0002J\u0008\u0010&\u001a\u00020\u001bH\u0002J \u0010\'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020 2\u000e\u0010)\u001a\n\u0018\u00010*j\u0004\u0018\u0001`+H\u0002J\u0008\u0010,\u001a\u00020\u001bH\u0002J\u0010\u0010-\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020/H\u0016J\u0008\u00100\u001a\u00020\u001bH\u0002J\u0008\u00101\u001a\u00020\u001bH\u0002J\u001c\u00102\u001a\u00020\u001b2\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020504H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;",
        "Landroid/app/Activity;",
        "Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;",
        "<init>",
        "()V",
        "mPB",
        "Landroid/widget/ProgressBar;",
        "mStatusText",
        "Landroid/widget/TextView;",
        "mProgressFraction",
        "mProgressPercent",
        "mAverageSpeed",
        "mTimeRemaining",
        "mDashboard",
        "Landroid/view/View;",
        "mCellMessage",
        "mPauseButton",
        "Landroid/widget/Button;",
        "mWiFiSettingsButton",
        "mAssetPackManager",
        "Lcom/google/android/play/core/assetpacks/AssetPackManager;",
        "mHandler",
        "Landroid/os/Handler;",
        "mAttempt",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "mComplete",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "describeStatus",
        "",
        "status",
        "",
        "checkAssetPack",
        "downloadAssetPack",
        "attempt",
        "onComplete",
        "onFailure",
        "label",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "initializeDownloadUI",
        "onStateUpdate",
        "state",
        "Lcom/google/android/play/core/assetpacks/AssetPackState;",
        "onDownloadComplete",
        "onDownloadFailed",
        "launchGame",
        "configure",
        "Lkotlin/Function1;",
        "Landroid/content/Intent;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$Companion;

.field private static final LOG_TAG:Ljava/lang/String; = "LVLDownloader"

.field private static final PACK_MAIN:Ljava/lang/String; = "data_main"

.field private static final PACK_MUSIC:Ljava/lang/String; = "data_music"


# instance fields
.field private mAssetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

.field private mAttempt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAverageSpeed:Landroid/widget/TextView;

.field private mCellMessage:Landroid/view/View;

.field private mComplete:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDashboard:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mPB:Landroid/widget/ProgressBar;

.field private mPauseButton:Landroid/widget/Button;

.field private mProgressFraction:Landroid/widget/TextView;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mStatusText:Landroid/widget/TextView;

.field private mTimeRemaining:Landroid/widget/TextView;

.field private mWiFiSettingsButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$7K5NSsfuvJos9TOqie_j41S3QaI(ILcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->downloadAssetPack$lambda$3(ILcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7qfPOjv8WAj1kMB7h3etXz-FgF0(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Lcom/google/android/play/core/assetpacks/AssetPackStates;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->downloadAssetPack$lambda$0(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Lcom/google/android/play/core/assetpacks/AssetPackStates;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BkXn7iLeXMRHXxgcD8uvTg8vKvs(Ljava/util/List;Ljava/util/List;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->onDownloadComplete$lambda$11(Ljava/util/List;Ljava/util/List;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BzMAPbeiRsv82YvVFcM6wxGYq04(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->downloadAssetPack$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HDODFPTIn37r9ymwavnbG_V7MeY(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->initializeDownloadUI$lambda$9$lambda$6(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RPKDKrF3CaF9pMVwkvqJ82qr9Tw(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->initializeDownloadUI$lambda$5(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UE1PRcvQDufCCcLYR1iGz7cC0Ww(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->initializeDownloadUI$lambda$9$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_SrI7nW_HXgk9RYnlUWtvzy1r7k(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->initializeDownloadUI$lambda$9(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bC3W-C-OZPIsisvgeX2fBDHS61o(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->downloadAssetPack$lambda$3$lambda$2(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iWAcF7ml6drdxKqsLli0x9ZW3sA(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->onComplete$lambda$4(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nLRVymTB8V2knKnAW3hPgyP6zOE(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->initializeDownloadUI$lambda$9$lambda$8(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nkA6sf_SSVj_U719zqayX3d-3Lg(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->onDownloadFailed$lambda$12(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->Companion:Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mAttempt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mComplete:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private final checkAssetPack()V
    .locals 4

    .line 101
    const-string v0, "Checking location of data_music"

    const-string v1, "LVLDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mAssetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    if-nez v2, :cond_0

    const-string v2, "mAssetPackManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_0
    const-string v3, "data_music"

    invoke-interface {v2, v3}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackLocation(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 109
    const-string v3, "getPackLocation failed"

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->assetsPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 115
    const-string v0, "Pack already downloaded"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->onDownloadComplete()V

    goto :goto_2

    .line 120
    :cond_2
    const-string v2, "Requesting download"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 121
    invoke-static {p0, v1, v2, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->downloadAssetPack$default(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;IILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private final describeStatus(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<unknown "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_0
    const-string p1, "NOT_INSTALLED"

    return-object p1

    .line 94
    :pswitch_1
    const-string p1, "WAITING_FOR_WIFI"

    return-object p1

    .line 86
    :pswitch_2
    const-string p1, "CANCELED"

    return-object p1

    .line 89
    :pswitch_3
    const-string p1, "FAILED"

    return-object p1

    .line 87
    :pswitch_4
    const-string p1, "COMPLETED"

    return-object p1

    .line 92
    :pswitch_5
    const-string p1, "TRANSFERRING"

    return-object p1

    .line 88
    :pswitch_6
    const-string p1, "DOWNLOADING"

    return-object p1

    .line 91
    :pswitch_7
    const-string p1, "PENDING"

    return-object p1

    .line 93
    :pswitch_8
    const-string p1, "UNKNOWN"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final downloadAssetPack(I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tryDownloadAssetPack ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " attempts)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->onFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mAssetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    if-nez v0, :cond_1

    const-string v0, "mAssetPackManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const-string v0, "data_music"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->fetch(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda11;-><init>(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;)V

    new-instance v2, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda2;-><init>(ILcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static synthetic downloadAssetPack$default(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 125
    :cond_0
    invoke-direct {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->downloadAssetPack(I)V

    return-void
.end method

.method private static final downloadAssetPack$lambda$0(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Lcom/google/android/play/core/assetpacks/AssetPackStates;)Lkotlin/Unit;
    .locals 1

    .line 135
    const-string p1, "LVLDownloader"

    const-string v0, "Download success"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->onComplete()V

    .line 137
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final downloadAssetPack$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 134
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final downloadAssetPack$lambda$3(ILcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Download failed (attempt "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Throwable;

    const-string v1, "LVLDownloader"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    iget-object p2, p1, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mAttempt:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v0, p0, 0x1

    invoke-virtual {p2, p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 143
    iget-object p2, p1, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    const-string p2, "mHandler"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    new-instance v0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda5;-><init>(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;I)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private static final downloadAssetPack$lambda$3$lambda$2(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;I)V
    .locals 2

    .line 144
    const-string v0, "LVLDownloader"

    const-string v1, "downloadAssetPack: retrying download"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    .line 145
    invoke-direct {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->downloadAssetPack(I)V

    return-void
.end method

.method private final initializeDownloadUI()V
    .locals 2

    .line 177
    sget v0, Lcom/rockstargames/gtalcs/R$layout;->downloader:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->setContentView(I)V

    .line 179
    sget v0, Lcom/rockstargames/gtalcs/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mPB:Landroid/widget/ProgressBar;

    .line 180
    sget v0, Lcom/rockstargames/gtalcs/R$id;->statusText:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mStatusText:Landroid/widget/TextView;

    .line 181
    sget v0, Lcom/rockstargames/gtalcs/R$id;->progressAsFraction:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mProgressFraction:Landroid/widget/TextView;

    .line 182
    sget v0, Lcom/rockstargames/gtalcs/R$id;->progressAsPercentage:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mProgressPercent:Landroid/widget/TextView;

    .line 183
    sget v0, Lcom/rockstargames/gtalcs/R$id;->progressAverageSpeed:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mAverageSpeed:Landroid/widget/TextView;

    .line 184
    sget v0, Lcom/rockstargames/gtalcs/R$id;->progressTimeRemaining:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mTimeRemaining:Landroid/widget/TextView;

    .line 185
    sget v0, Lcom/rockstargames/gtalcs/R$id;->downloaderDashboard:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mDashboard:Landroid/view/View;

    .line 186
    sget v0, Lcom/rockstargames/gtalcs/R$id;->approveCellular:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mCellMessage:Landroid/view/View;

    .line 187
    sget v0, Lcom/rockstargames/gtalcs/R$id;->pauseButton:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mPauseButton:Landroid/widget/Button;

    .line 188
    sget v0, Lcom/rockstargames/gtalcs/R$id;->wifiSettingsButton:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mWiFiSettingsButton:Landroid/widget/Button;

    .line 190
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mPauseButton:Landroid/widget/Button;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mAverageSpeed:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mTimeRemaining:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mWiFiSettingsButton:Landroid/widget/Button;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda6;-><init>(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    sget v0, Lcom/rockstargames/gtalcs/R$id;->resumeOverCellular:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.Button"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    .line 197
    new-instance v1, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda7;-><init>(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initializeDownloadUI$lambda$5(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Landroid/view/View;)V
    .locals 1

    .line 194
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initializeDownloadUI$lambda$9(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Landroid/view/View;)V
    .locals 2

    .line 200
    iget-object p1, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mAssetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    if-nez p1, :cond_0

    const-string p1, "mAssetPackManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->showCellularDataConfirmation(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 201
    new-instance v0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda0;-><init>(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;)V

    new-instance v1, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 211
    new-instance v0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda4;-><init>(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final initializeDownloadUI$lambda$9$lambda$6(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 1

    .line 202
    iget-object p0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mCellMessage:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initializeDownloadUI$lambda$9$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 201
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final initializeDownloadUI$lambda$9$lambda$8(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    const-string v0, "showCellularDataConfirmation"

    invoke-direct {p0, v0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->onFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private final launchGame(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Intent;",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/rockstargames/gtalcs/GameActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setClass(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 337
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->finish()V

    return-void
.end method

.method private final onComplete()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mComplete:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onComplete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " completions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LVLDownloader"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 160
    const-string v0, "onComplete: dispatching onDownloadComplete"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "mHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda9;-><init>(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static final onComplete$lambda$4(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;)V
    .locals 2

    .line 163
    const-string v0, "LVLDownloader"

    const-string v1, "onComplete: onDownloadComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->onDownloadComplete()V

    return-void
.end method

.method private final onDownloadComplete()V
    .locals 10

    .line 285
    const-string v0, "onDownloadComplete: launching the game activity"

    const-string v1, "LVLDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 288
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x2

    .line 290
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data_main"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "data_music"

    aput-object v5, v3, v4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 356
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 291
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v5, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mAssetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const-string v5, "mAssetPackManager"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_0
    invoke-interface {v5, v4}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackLocation(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object v5

    const-string v7, "onDownloadComplete: getPackLocation("

    if-eqz v5, :cond_3

    .line 296
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Pack "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nstorageMethod = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 357
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->packStorageMethod()I

    move-result v9

    .line 296
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\npath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 358
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->path()Ljava/lang/String;

    move-result-object v9

    .line 296
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nassetsPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 359
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->assetsPath()Ljava/lang/String;

    move-result-object v9

    .line 296
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->packStorageMethod()I

    move-result v8

    if-nez v8, :cond_2

    .line 361
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->path()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 302
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").path returned null for STORAGE_FILES pack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_2
    :goto_1
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 294
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_4
    new-instance v1, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, v2}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->launchGame(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final onDownloadComplete$lambda$11(Ljava/util/List;Ljava/util/List;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 366
    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 313
    const-string v1, "packNames"

    invoke-virtual {p2, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 314
    check-cast p1, Ljava/util/Collection;

    .line 370
    new-array p2, v0, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 314
    const-string p2, "packPaths"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "putExtra(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final onDownloadFailed()V
    .locals 3

    .line 320
    const-string v0, "LVLDownloader"

    const-string v1, "onDownloadFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    sget v1, Lcom/rockstargames/gtalcs/R$string;->error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 324
    sget v1, Lcom/rockstargames/gtalcs/R$string;->NoConnectionOrExpansions:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda10;-><init>(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 329
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final onDownloadFailed$lambda$12(Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 326
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 327
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->finish()V

    return-void
.end method

.method private final onFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ERROR] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Throwable;

    const-string v0, "LVLDownloader"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->onDownloadFailed()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rockstargames/gtalcs/GameActivity;
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onStateUpdate(Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 10

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PACK STATE UPDATE] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v1

    .line 221
    invoke-direct {p0, v1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->describeStatus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->transferProgressPercentage()I

    move-result v1

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LVLDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v5, 0x5

    if-eq v0, v5, :cond_1

    const/4 v5, 0x6

    if-eq v0, v5, :cond_1

    const/4 v5, 0x7

    if-eq v0, v5, :cond_0

    move v0, v4

    move v5, v0

    goto :goto_1

    :cond_0
    move v0, v3

    move v3, v4

    goto :goto_0

    :cond_1
    move v0, v4

    move v3, v0

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v3

    move v0, v4

    .line 346
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 262
    sget v6, Lcom/rockstargames/gtalcs/R$string;->state_unknown:I

    invoke-virtual {p0, v6}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 257
    :pswitch_0
    sget v6, Lcom/rockstargames/gtalcs/R$string;->state_idle:I

    invoke-virtual {p0, v6}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 261
    :pswitch_1
    sget v6, Lcom/rockstargames/gtalcs/R$string;->state_paused_wifi_unavailable:I

    invoke-virtual {p0, v6}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 253
    :pswitch_2
    sget v6, Lcom/rockstargames/gtalcs/R$string;->state_failed_cancelled:I

    invoke-virtual {p0, v6}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 256
    :pswitch_3
    sget v6, Lcom/rockstargames/gtalcs/R$string;->state_failed:I

    invoke-virtual {p0, v6}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 254
    :pswitch_4
    sget v6, Lcom/rockstargames/gtalcs/R$string;->state_completed:I

    invoke-virtual {p0, v6}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 259
    :pswitch_5
    sget v6, Lcom/rockstargames/gtalcs/R$string;->state_downloading:I

    invoke-virtual {p0, v6}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 255
    :pswitch_6
    sget v6, Lcom/rockstargames/gtalcs/R$string;->state_downloading:I

    invoke-virtual {p0, v6}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 258
    :pswitch_7
    sget v6, Lcom/rockstargames/gtalcs/R$string;->state_fetching_url:I

    invoke-virtual {p0, v6}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 260
    :pswitch_8
    sget v6, Lcom/rockstargames/gtalcs/R$string;->state_unknown:I

    invoke-virtual {p0, v6}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    :goto_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 265
    iget-object v7, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mStatusText:Landroid/widget/TextView;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v8, Lcom/rockstargames/gtalcs/R$string;->status_message:I

    .line 347
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    filled-new-array {v9, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v8, v2}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v2, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mDashboard:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v6, 0x8

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v6

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v2, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mCellMessage:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v4, v6

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mPB:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 271
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mPB:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 272
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mPB:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->transferProgressPercentage()I

    move-result v2

    .line 272
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 274
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mProgressPercent:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lcom/rockstargames/gtalcs/R$string;->status_percentage:I

    .line 349
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->transferProgressPercentage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 274
    invoke-virtual {p0, v2, v3}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->mProgressFraction:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lcom/rockstargames/gtalcs/R$string;->status_size:I

    .line 350
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->bytesDownloaded()J

    move-result-wide v3

    const/16 v5, 0x400

    int-to-long v5, v5

    .line 275
    div-long/2addr v3, v5

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 354
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->totalBytesToDownload()J

    move-result-wide v7

    .line 275
    div-long/2addr v7, v5

    div-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 279
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->onComplete()V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {p0, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->onStateUpdate(Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    return-void
.end method

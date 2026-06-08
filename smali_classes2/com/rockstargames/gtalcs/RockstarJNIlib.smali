.class public final Lcom/rockstargames/gtalcs/RockstarJNIlib;
.super Ljava/lang/Object;
.source "RockstarJNIlib.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0007J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007J\u0008\u0010\u0008\u001a\u00020\u0005H\u0007J\u0008\u0010\t\u001a\u00020\u0005H\u0007J\u0008\u0010\n\u001a\u00020\u0005H\u0007J\u0008\u0010\u000b\u001a\u00020\u0005H\u0007J\u0008\u0010\u000c\u001a\u00020\u0005H\u0007J\u0008\u0010\r\u001a\u00020\u0005H\u0007J\u0012\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\t\u0010\u0011\u001a\u00020\u0005H\u0082 J\t\u0010\u0012\u001a\u00020\u0005H\u0082 J\t\u0010\u0013\u001a\u00020\u0005H\u0082 J\t\u0010\u0014\u001a\u00020\u0005H\u0082 J\u0011\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0007H\u0086 J\u0013\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0010H\u0086 \u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/rockstargames/gtalcs/RockstarJNIlib;",
        "",
        "<init>",
        "()V",
        "ShowPrompt",
        "",
        "CheckGate",
        "",
        "ShowGate",
        "ShowGateBeforeLoad",
        "GameLoad",
        "UpdateRockstarID",
        "SignIn",
        "SignOut",
        "SetLocalePriority",
        "localeTag",
        "",
        "StartGame",
        "StartGameBeforeLoad",
        "FinishGate",
        "GameLoaded",
        "HandleStateChanged",
        "pauseGameplay",
        "HandleTokenReceived",
        "ticket",
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
.field public static final INSTANCE:Lcom/rockstargames/gtalcs/RockstarJNIlib;


# direct methods
.method public static synthetic $r8$lambda$0vX4st9sl2LmdNcXdElZlKSU7Kw()V
    .locals 0

    invoke-static {}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->GameLoad$lambda$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYi1Xo_KvSIYtp6_ekZnuSFa6GU()V
    .locals 0

    invoke-static {}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->SignIn$lambda$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$_EhzZv_3CcWNa5MwjMLEsVSPsD0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->ShowPrompt$lambda$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ce5EhmfDkgRVOxmzGF4K6rr8vcA(Z)V
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->ShowGateBeforeLoad$lambda$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xTfnsiDDM_VGKNRI-FQs1vWc-oI(Z)V
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->ShowGate$lambda$1(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rockstargames/gtalcs/RockstarJNIlib;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/RockstarJNIlib;-><init>()V

    sput-object v0, Lcom/rockstargames/gtalcs/RockstarJNIlib;->INSTANCE:Lcom/rockstargames/gtalcs/RockstarJNIlib;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final CheckGate()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 24
    invoke-static {}, Lrockstarmobile/Rockstar;->inTrial()Z

    move-result v0

    return v0
.end method

.method private final native FinishGate()V
.end method

.method public static final GameLoad()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 75
    new-instance v0, Lcom/rockstargames/gtalcs/RockstarJNIlib$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/RockstarJNIlib$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "{rockstar:socialclub.gameload}"

    invoke-static {v1, v0}, Lrockstarmobile/Rockstar;->login(Ljava/lang/String;Lrockstarmobile/Rockstar$Callback;)V

    return-void
.end method

.method private static final GameLoad$lambda$3()V
    .locals 1

    .line 75
    sget-object v0, Lcom/rockstargames/gtalcs/RockstarJNIlib;->INSTANCE:Lcom/rockstargames/gtalcs/RockstarJNIlib;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->GameLoaded()V

    return-void
.end method

.method private final native GameLoaded()V
.end method

.method public static final SetLocalePriority(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 117
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lrockstarmobile/Rockstar;->setLocalePriority(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static final ShowGate()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 37
    new-instance v0, Lcom/rockstargames/gtalcs/RockstarJNIlib$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/RockstarJNIlib$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "{rockstar:gate.play}"

    invoke-static {v1, v0}, Lrockstarmobile/Rockstar;->showGate(Ljava/lang/String;Lrockstarmobile/Rockstar$GateCompletionCallback;)V

    return-void
.end method

.method private static final ShowGate$lambda$1(Z)V
    .locals 1

    .line 38
    sget-object v0, Lcom/rockstargames/gtalcs/RockstarJNIlib;->INSTANCE:Lcom/rockstargames/gtalcs/RockstarJNIlib;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->FinishGate()V

    if-eqz p0, :cond_0

    .line 41
    invoke-direct {v0}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->StartGame()V

    :cond_0
    return-void
.end method

.method public static final ShowGateBeforeLoad()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 56
    new-instance v0, Lcom/rockstargames/gtalcs/RockstarJNIlib$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/RockstarJNIlib$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "{rockstar:gate.play}"

    invoke-static {v1, v0}, Lrockstarmobile/Rockstar;->showGate(Ljava/lang/String;Lrockstarmobile/Rockstar$GateCompletionCallback;)V

    return-void
.end method

.method private static final ShowGateBeforeLoad$lambda$2(Z)V
    .locals 1

    .line 57
    sget-object v0, Lcom/rockstargames/gtalcs/RockstarJNIlib;->INSTANCE:Lcom/rockstargames/gtalcs/RockstarJNIlib;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->FinishGate()V

    if-eqz p0, :cond_0

    .line 60
    invoke-direct {v0}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->StartGameBeforeLoad()V

    :cond_0
    return-void
.end method

.method public static final ShowPrompt()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/rockstargames/gtalcs/RockstarJNIlib$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/RockstarJNIlib$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "cloudsavesdisabledfortrial"

    invoke-static {v2, v0, v1}, Lrockstarmobile/Rockstar;->showDialog(Ljava/lang/String;Ljava/util/HashMap;Lrockstarmobile/Rockstar$TCallback;)V

    return-void
.end method

.method private static final ShowPrompt$lambda$0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dialogresults: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static final SignIn()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 97
    new-instance v0, Lcom/rockstargames/gtalcs/RockstarJNIlib$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/RockstarJNIlib$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "{rockstar:socialclub.signin}"

    invoke-static {v1, v0}, Lrockstarmobile/Rockstar;->login(Ljava/lang/String;Lrockstarmobile/Rockstar$Callback;)V

    .line 98
    invoke-static {}, Lrockstarmobile/Rockstar;->rockstarUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->updateRockstarID(Ljava/lang/String;)V

    return-void
.end method

.method private static final SignIn$lambda$4()V
    .locals 0

    return-void
.end method

.method public static final SignOut()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 107
    invoke-static {}, Lrockstarmobile/Rockstar;->logout()V

    .line 108
    invoke-static {}, Lrockstarmobile/Rockstar;->rockstarUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->updateRockstarID(Ljava/lang/String;)V

    return-void
.end method

.method private final native StartGame()V
.end method

.method private final native StartGameBeforeLoad()V
.end method

.method public static final UpdateRockstarID()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 88
    invoke-static {}, Lrockstarmobile/Rockstar;->rockstarUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->updateRockstarID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final native HandleStateChanged(Z)V
.end method

.method public final native HandleTokenReceived(Ljava/lang/String;)V
.end method

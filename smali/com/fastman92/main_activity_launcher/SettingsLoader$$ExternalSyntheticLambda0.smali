.class public final synthetic Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;


# direct methods
.method public synthetic constructor <init>(Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda0;->f$0:Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda0;->f$0:Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;

    invoke-static {v0, p1}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->lambda$requestPermissions$0(Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;Landroid/content/DialogInterface;)V

    return-void
.end method

.class Lcom/fastman92/main_activity_launcher/SettingsLoader$1;
.super Ljava/lang/Object;
.source "SettingsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fastman92/main_activity_launcher/SettingsLoader;->requestPermissionsCompat([Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fastman92/main_activity_launcher/SettingsLoader;

.field final synthetic val$activity:Lcom/fastman92/main_activity_launcher/SettingsLoader;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/fastman92/main_activity_launcher/SettingsLoader;[Ljava/lang/String;Lcom/fastman92/main_activity_launcher/SettingsLoader;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fastman92/main_activity_launcher/SettingsLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->this$0:Lcom/fastman92/main_activity_launcher/SettingsLoader;

    iput-object p2, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->val$permissions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->val$activity:Lcom/fastman92/main_activity_launcher/SettingsLoader;

    iput p4, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 232
    iget-object v0, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->val$permissions:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    .line 234
    .local v0, "grantResults":[I
    iget-object v1, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->val$activity:Lcom/fastman92/main_activity_launcher/SettingsLoader;

    invoke-virtual {v1}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 235
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->val$activity:Lcom/fastman92/main_activity_launcher/SettingsLoader;

    invoke-virtual {v2}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->val$permissions:[Ljava/lang/String;

    array-length v3, v3

    .line 238
    .local v3, "permissionCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 239
    iget-object v5, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->val$permissions:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 243
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->val$activity:Lcom/fastman92/main_activity_launcher/SettingsLoader;

    iget v5, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->val$requestCode:I

    iget-object v6, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;->val$permissions:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 245
    return-void
.end method

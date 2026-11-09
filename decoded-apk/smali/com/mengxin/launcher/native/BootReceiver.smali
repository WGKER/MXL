.class public Lcom/mengxin/launcher/native/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"

# direct methods
.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"     # Landroid/content/Intent;

    # 构建Intent，拉起自己MainActivity
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcom/mengxin/launcher/native/MainActivity;
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    # FLAG_ACTIVITY_NEW_TASK | FLAG_ACTIVITY_CLEAR_TOP
    const v2, 0x10004000
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

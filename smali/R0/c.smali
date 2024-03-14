.class public final synthetic LR0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:J

.field public final synthetic e:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method public synthetic constructor <init>(JLandroid/content/pm/LauncherApps$PinItemRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LR0/c;->d:J

    iput-object p3, p0, LR0/c;->e:Landroid/content/pm/LauncherApps$PinItemRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-wide v0, p0, LR0/c;->d:J

    iget-object p0, p0, LR0/c;->e:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    :cond_0
    return-void
.end method

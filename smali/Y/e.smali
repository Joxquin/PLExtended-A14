.class public final LY/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY/g;


# instance fields
.field public final synthetic a:Landroidx/profileinstaller/ProfileInstallReceiver;


# direct methods
.method public constructor <init>(Landroidx/profileinstaller/ProfileInstallReceiver;)V
    .locals 0

    iput-object p1, p0, LY/e;->a:Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 1

    sget-object v0, LY/h;->a:LY/f;

    invoke-virtual {v0, p1, p2}, LY/f;->a(ILjava/lang/Object;)V

    iget-object p0, p0, LY/e;->a:Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void
.end method

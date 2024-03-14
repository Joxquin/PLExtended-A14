.class public final Lcom/google/android/apps/nexuslauncher/t;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/u;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/u;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/t;->a:Lcom/google/android/apps/nexuslauncher/u;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/t;->a:Lcom/google/android/apps/nexuslauncher/u;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/u;->d(I)V

    return-void
.end method

.class public final LU1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

.field public final synthetic e:Landroid/content/Intent;

.field public final synthetic f:Landroid/app/ActivityOptions;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0

    iput-object p1, p0, LU1/o;->d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    iput-object p2, p0, LU1/o;->e:Landroid/content/Intent;

    iput-object p3, p0, LU1/o;->f:Landroid/app/ActivityOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LU1/o;->d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LU1/o;->e:Landroid/content/Intent;

    iget-object p0, p0, LU1/o;->f:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

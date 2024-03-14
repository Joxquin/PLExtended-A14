.class public final synthetic LD0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/a;->d:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-boolean p2, p0, LD0/a;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LD0/a;->d:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-boolean p0, p0, LD0/a;->e:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->b(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Z)V

    return-void
.end method

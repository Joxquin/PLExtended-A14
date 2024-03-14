.class public final synthetic LD0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/c;->d:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-void
.end method


# virtual methods
.method public final onAppsUpdated()V
    .locals 0

    iget-object p0, p0, LD0/c;->d:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->c(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-void
.end method

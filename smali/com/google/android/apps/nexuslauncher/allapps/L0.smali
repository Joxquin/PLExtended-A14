.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/p;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/L0;->d:Lcom/google/android/apps/nexuslauncher/allapps/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/L0;->d:Lcom/google/android/apps/nexuslauncher/allapps/p;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/p;->b(Ljava/util/List;)V

    return-void
.end method

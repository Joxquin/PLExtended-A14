.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/q;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/o;->d:Lcom/google/android/apps/nexuslauncher/allapps/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/o;->d:Lcom/google/android/apps/nexuslauncher/allapps/q;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/q;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->a(Ljava/util/List;)V

    return-void
.end method

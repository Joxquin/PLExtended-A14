.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/a1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/n;->a:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/n;->a:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->f(Ljava/util/List;)V

    return-void
.end method

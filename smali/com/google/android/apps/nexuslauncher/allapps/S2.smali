.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/S2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:LJ2/c;


# direct methods
.method public synthetic constructor <init>(LJ2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/S2;->a:LJ2/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/S2;->a:LJ2/c;

    check-cast p1, Landroidx/lifecycle/z;

    invoke-interface {p1, p0}, Landroidx/lifecycle/z;->i(Ljava/lang/Object;)V

    return-void
.end method

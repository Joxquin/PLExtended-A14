.class public final La0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/d;


# instance fields
.field public final a:Ljava/util/Set;


# direct methods
.method public constructor <init>(La0/e;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, La0/a;->a:Ljava/util/Set;

    const-string v0, "androidx.savedstate.Restarter"

    invoke-virtual {p1, v0, p0}, La0/e;->c(Ljava/lang/String;La0/d;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, La0/a;->a:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "classes_to_restore"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.class public final LA0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LA0/g;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(LA0/g;Z)V
    .locals 0

    iput-object p1, p0, LA0/e;->d:LA0/g;

    iput-boolean p2, p0, LA0/e;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LA0/e;->d:LA0/g;

    iget-boolean p0, p0, LA0/e;->e:Z

    iput-boolean p0, v0, LA0/x;->e:Z

    iget-object p0, v0, LA0/x;->b:Ljava/util/List;

    new-instance v1, LA0/i;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LA0/i;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-boolean v0, v0, LA0/x;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, LA0/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LA0/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

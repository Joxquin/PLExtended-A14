.class public final Lg0/z;
.super Lg0/y;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lq/f;

.field public final synthetic e:Lg0/A;


# direct methods
.method public constructor <init>(Lg0/A;Lq/f;)V
    .locals 0

    iput-object p1, p0, Lg0/z;->e:Lg0/A;

    iput-object p2, p0, Lg0/z;->d:Lq/f;

    invoke-direct {p0}, Lg0/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lg0/x;)V
    .locals 2

    iget-object v0, p0, Lg0/z;->e:Lg0/A;

    iget-object v0, v0, Lg0/A;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lg0/z;->d:Lq/f;

    invoke-virtual {v1, v0}, Lq/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lg0/x;->z(Lg0/u;)V

    return-void
.end method

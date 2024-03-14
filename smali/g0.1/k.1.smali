.class public final Lg0/k;
.super Lg0/y;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/util/ArrayList;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/util/ArrayList;

.field public final synthetic j:Lg0/n;


# direct methods
.method public constructor <init>(Lg0/n;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lg0/k;->j:Lg0/n;

    iput-object p2, p0, Lg0/k;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg0/k;->e:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lg0/k;->f:Ljava/lang/Object;

    iput-object p1, p0, Lg0/k;->g:Ljava/util/ArrayList;

    iput-object p4, p0, Lg0/k;->h:Ljava/lang/Object;

    iput-object p5, p0, Lg0/k;->i:Ljava/util/ArrayList;

    invoke-direct {p0}, Lg0/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg0/x;)V
    .locals 3

    const/4 p1, 0x0

    iget-object v0, p0, Lg0/k;->j:Lg0/n;

    iget-object v1, p0, Lg0/k;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lg0/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Lg0/n;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, Lg0/k;->f:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lg0/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Lg0/n;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v1, p0, Lg0/k;->h:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lg0/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0, p1}, Lg0/n;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public final g(Lg0/x;)V
    .locals 0

    invoke-virtual {p1, p0}, Lg0/x;->z(Lg0/u;)V

    return-void
.end method

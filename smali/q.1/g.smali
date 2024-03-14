.class public final Lq/g;
.super Lq/i;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lq/h;


# direct methods
.method public constructor <init>(Lq/h;)V
    .locals 0

    iput-object p1, p0, Lq/g;->g:Lq/h;

    iget p1, p1, Lq/h;->f:I

    invoke-direct {p0, p1}, Lq/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lq/g;->g:Lq/h;

    iget-object p0, p0, Lq/h;->e:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final b(I)V
    .locals 0

    iget-object p0, p0, Lq/g;->g:Lq/h;

    invoke-virtual {p0, p1}, Lq/h;->i(I)Ljava/lang/Object;

    return-void
.end method

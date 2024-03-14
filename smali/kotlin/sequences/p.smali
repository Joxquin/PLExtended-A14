.class public final Lkotlin/sequences/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/g;


# instance fields
.field public final a:Lkotlin/sequences/g;

.field public final b:Lm3/l;


# direct methods
.method public constructor <init>(Lkotlin/sequences/g;Lm3/l;)V
    .locals 1

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/p;->a:Lkotlin/sequences/g;

    iput-object p2, p0, Lkotlin/sequences/p;->b:Lm3/l;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/sequences/o;

    invoke-direct {v0, p0}, Lkotlin/sequences/o;-><init>(Lkotlin/sequences/p;)V

    return-object v0
.end method

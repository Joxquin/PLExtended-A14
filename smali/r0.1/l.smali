.class public final Lr0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c;


# instance fields
.field public final a:Lq0/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr0/l;->a:Lq0/m;

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/a;Ls0/b;)Lm0/d;
    .locals 1

    new-instance v0, Lm0/r;

    invoke-direct {v0, p1, p2, p0}, Lm0/r;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/l;)V

    return-object v0
.end method

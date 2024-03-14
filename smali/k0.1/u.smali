.class public final synthetic Lk0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/C;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/a;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/a;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/u;->a:Lcom/airbnb/lottie/a;

    iput p2, p0, Lk0/u;->b:F

    iput p3, p0, Lk0/u;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lk0/u;->b:F

    iget v1, p0, Lk0/u;->c:F

    iget-object p0, p0, Lk0/u;->a:Lcom/airbnb/lottie/a;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/a;->v(FF)V

    return-void
.end method

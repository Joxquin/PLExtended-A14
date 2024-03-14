.class public final synthetic Lk0/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/C;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/a;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/a;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/A;->a:Lcom/airbnb/lottie/a;

    iput p2, p0, Lk0/A;->b:I

    iput p3, p0, Lk0/A;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lk0/A;->b:I

    iget v1, p0, Lk0/A;->c:I

    iget-object p0, p0, Lk0/A;->a:Lcom/airbnb/lottie/a;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/a;->s(II)V

    return-void
.end method

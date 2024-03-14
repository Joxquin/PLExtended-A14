.class public final synthetic Lk0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/C;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/a;

.field public final synthetic b:Lp0/e;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lx0/c;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/a;Lp0/e;Ljava/lang/Object;Lx0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/z;->a:Lcom/airbnb/lottie/a;

    iput-object p2, p0, Lk0/z;->b:Lp0/e;

    iput-object p3, p0, Lk0/z;->c:Ljava/lang/Object;

    iput-object p4, p0, Lk0/z;->d:Lx0/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk0/z;->c:Ljava/lang/Object;

    iget-object v1, p0, Lk0/z;->d:Lx0/c;

    iget-object v2, p0, Lk0/z;->a:Lcom/airbnb/lottie/a;

    iget-object p0, p0, Lk0/z;->b:Lp0/e;

    invoke-virtual {v2, p0, v0, v1}, Lcom/airbnb/lottie/a;->a(Lp0/e;Ljava/lang/Object;Lx0/c;)V

    return-void
.end method

.class public final synthetic LY/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LY/c;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LY/c;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY/b;->d:LY/c;

    iput p2, p0, LY/b;->e:I

    iput-object p3, p0, LY/b;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LY/b;->d:LY/c;

    iget v1, p0, LY/b;->e:I

    iget-object p0, p0, LY/b;->f:Ljava/lang/Object;

    iget-object v0, v0, LY/c;->b:LY/g;

    invoke-interface {v0, v1, p0}, LY/g;->a(ILjava/lang/Object;)V

    return-void
.end method

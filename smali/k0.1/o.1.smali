.class public final synthetic Lk0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:Ljava/io/InputStream;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/o;->d:Ljava/io/InputStream;

    iput-object p2, p0, Lk0/o;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lk0/o;->d:Ljava/io/InputStream;

    iget-object p0, p0, Lk0/o;->e:Ljava/lang/String;

    invoke-static {v0, p0}, Lk0/s;->c(Ljava/io/InputStream;Ljava/lang/String;)Lk0/H;

    move-result-object p0

    return-object p0
.end method

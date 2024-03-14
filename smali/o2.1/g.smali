.class public final Lo2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LC2/a;


# instance fields
.field public final a:LC2/c;

.field public final b:LC2/c;

.field public final c:LC2/c;

.field public final d:LC2/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LC2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LC2/a;-><init>(F)V

    sput-object v0, Lo2/g;->e:LC2/a;

    return-void
.end method

.method public constructor <init>(LC2/c;LC2/c;LC2/c;LC2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/g;->a:LC2/c;

    iput-object p3, p0, Lo2/g;->b:LC2/c;

    iput-object p4, p0, Lo2/g;->c:LC2/c;

    iput-object p2, p0, Lo2/g;->d:LC2/c;

    return-void
.end method
